//   
'use strict';

/** 터미널 생성 */
class Termynal {
//    컨테이터 생성
    constructor(container = '#termynal', options = {}) {
        this.container = (typeof container === 'string') ? document.querySelector(container) : container;
        this.pfx = `data-${options.prefix || 'ty'}`;
//        딜레이 설정하기
        this.startDelay = options.startDelay
            || parseFloat(this.container.getAttribute(`${this.pfx}-startDelay`)) || 600;
        this.typeDelay = options.typeDelay
            || parseFloat(this.container.getAttribute(`${this.pfx}-typeDelay`)) || 90;
        this.lineDelay = options.lineDelay
            || parseFloat(this.container.getAttribute(`${this.pfx}-lineDelay`)) || 1500;
//        길이 설정하기
        this.progressLength = options.progressLength
            || parseFloat(this.container.getAttribute(`${this.pfx}-progressLength`)) || 40;
//        커서 모양
        this.progressChar = options.progressChar
            || this.container.getAttribute(`${this.pfx}-progressChar`) || '█';
		this.progressPercent = options.progressPercent
            || parseFloat(this.container.getAttribute(`${this.pfx}-progressPercent`)) || 100;
//		커서 설정
        this.cursor = options.cursor
            || this.container.getAttribute(`${this.pfx}-cursor`) || '▋';
//        라인 데이터 설정해주기
        this.lineData = this.lineDataToElements(options.lineData || []);
        if (!options.noInit) this.init()
    }

    init() {
        // 동적 선 추가
        this.lines = [...this.container.querySelectorAll(`[${this.pfx}]`)].concat(this.lineData);

//        스타일 변수 설정
        const containerStyle = getComputedStyle(this.container);
        this.container.style.width = containerStyle.width !== '0px' ? 
            containerStyle.width : undefined;
        this.container.style.minHeight = containerStyle.height !== '0px' ? 
            containerStyle.height : undefined;

//       데이터 터미널 설정하기
        this.container.setAttribute('data-termynal', '');
        this.container.innerHTML = '';
//        시작하기...
        this.start();
    }

//    이벤트 시작하기
    async start() {
        await this._wait(this.startDelay);
//      글자수 판단 후 for문으로 라인 늘리기
        for (let line of this.lines) {
//        	변수 설정 (타입, 딜레이)
            const type = line.getAttribute(this.pfx);
            const delay = line.getAttribute(`${this.pfx}-delay`) || this.lineDelay;

//           길이에 따라 커서 설정하기
            if (type == 'input') {
                line.setAttribute(`${this.pfx}-cursor`, this.cursor);
//                실행시키기
                await this.type(line);
                await this._wait(delay);
            }

//            타자 치는 효과
            else if (type == 'progress') {
                await this.progress(line);
                await this._wait(delay);
            }

//            라인 딜레이
            else {
                this.container.appendChild(line);
                await this._wait(delay);
            }

//            지우기...
            line.removeAttribute(`${this.pfx}-cursor`);
        }
    }

//    비동기적으로 실행되는 라인 설정
    async type(line) {
//    	변수 설정
        const chars = [...line.textContent];
        const delay = line.getAttribute(`${this.pfx}-typeDelay`) || this.typeDelay;
        line.textContent = '';
//        추가 하기
        this.container.appendChild(line);
//		
        for (let char of chars) {
            await this._wait(delay);
            line.textContent += char;
        }
    }

//    기다리세요
    _wait(time) {
        return new Promise(resolve => setTimeout(resolve, time));
    }

// 라인 데이터 설정
    lineDataToElements(lineData) {
        return lineData.map(line => {
//        	변수 설정(div 태그 생성)
            let div = document.createElement('div');
            div.innerHTML = `<span ${this._attributes(line)}>${line.value || ''}</span>`;
//            값 반환
            return div.firstElementChild;
        });
    }

   
}

if (document.currentScript.hasAttribute('data-termynal-container')) {
    const containers = document.currentScript.getAttribute('data-termynal-container');
    containers.split('|')
        .forEach(container => new Termynal(container))
}
