.class Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "PukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V
    .registers 4
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    const v0, 0x102024d

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 654
    const v0, 0x1020244

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 655
    const v0, 0x1020245

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 656
    const v0, 0x1020246

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 657
    const v0, 0x1020247

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 658
    const v0, 0x1020248

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 659
    const v0, 0x1020249

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 660
    const v0, 0x102024a

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 661
    const v0, 0x102024b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 662
    const v0, 0x102024c

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 663
    const v0, 0x10201d3

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 665
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .registers 4
    .parameter "v"

    .prologue
    .line 704
    const/4 v0, -0x1

    .line 705
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 706
    const/4 v0, 0x0

    .line 726
    :cond_6
    :goto_6
    return v0

    .line 707
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_d

    .line 708
    const/4 v0, 0x1

    goto :goto_6

    .line 709
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_13

    .line 710
    const/4 v0, 0x2

    goto :goto_6

    .line 711
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_19

    .line 712
    const/4 v0, 0x3

    goto :goto_6

    .line 713
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1f

    .line 714
    const/4 v0, 0x4

    goto :goto_6

    .line 715
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_25

    .line 716
    const/4 v0, 0x5

    goto :goto_6

    .line 717
    :cond_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2b

    .line 718
    const/4 v0, 0x6

    goto :goto_6

    .line 719
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_31

    .line 720
    const/4 v0, 0x7

    goto :goto_6

    .line 721
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_38

    .line 722
    const/16 v0, 0x8

    goto :goto_6

    .line 723
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 724
    const/16 v0, 0x9

    goto :goto_6
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 691
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_e

    .line 692
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 701
    :cond_d
    :goto_d
    return-void

    .line 696
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 697
    .local v0, digit:I
    if-ltz v0, :cond_d

    .line 698
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 699
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PukUnlockScreen;I)V

    goto :goto_d
.end method
