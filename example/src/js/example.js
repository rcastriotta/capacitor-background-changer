import { BackgroundChanger } from 'capacitor-background-changer';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    BackgroundChanger.echo({ value: inputValue })
}
