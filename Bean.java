package Classes;

public class Bean {
	private boolean trigger = false;
	private int sumEvenPositiveNumbers = 0;
	private int sumOddNegativeNumbers = 0;
	private boolean arrayWithInvalidNumbers = false;
        
	public Bean(){ }

	public boolean getTrigger() {
		return trigger;
	}

	public void changeTrigger() {
		trigger = !trigger;
	}

        public int getSumOddNegativeNumbers() {
		return sumOddNegativeNumbers;
	}

	public void setSumOddNegativeNumbers(int sumOddNegativeNumbers) {
		this.sumOddNegativeNumbers = sumOddNegativeNumbers;
	}
	public int getSumEvenPositiveNumbers() {
		return sumEvenPositiveNumbers;
	}

	public void setSumEvenPositiveNumbers(int sumEvenPositiveNumbers) {
		this.sumEvenPositiveNumbers = sumEvenPositiveNumbers;
	}

	public boolean isArrayWithInvalidNumbers() {
		return arrayWithInvalidNumbers;
	}

	public void setArrayWithInvalidNumbers(boolean arrayWithInvalidNumbers) {
		this.arrayWithInvalidNumbers = arrayWithInvalidNumbers;
	}
        
        public int Summ(int SumOdd, int SumEven){
            return SumOdd+SumEven;
        }
}
