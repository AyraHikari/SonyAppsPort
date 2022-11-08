.class public Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "EditTextPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"

.field private static final SHOW_REQUEST_TIMEOUT:I = 0x3e8


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mShowRequestTime:J

.field private final mShowSoftInputRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 39
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$1;

    invoke-direct {v0, p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$1;-><init>(Landroidx/preference/EditTextPreferenceDialogFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    return-void
.end method

.method private getEditTextPreference()Landroidx/preference/EditTextPreference;
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    return-object v0
.end method

.method private hasPendingShowSoftInputRequest()Z
    .locals 4

    .line 106
    iget-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 50
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 51
    .local v0, "fragment":Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 52
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0
.end method

.method private setPendingShowSoftInputRequest(Z)V
    .locals 2
    .param p1, "pendingShowSoftInputRequest"    # Z

    .line 111
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    .line 112
    return-void
.end method


# virtual methods
.method protected needInputMethod()Z
    .locals 1

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 75
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 77
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 79
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 85
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 88
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getOnBindEditTextListener()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getOnBindEditTextListener()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroidx/preference/EditTextPreference$OnBindEditTextListener;->onBindEditText(Landroid/widget/EditText;)V

    .line 91
    :cond_0
    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 65
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v1

    .line 147
    .local v1, "preference":Landroidx/preference/EditTextPreference;
    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 151
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "preference":Landroidx/preference/EditTextPreference;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method protected scheduleShowSoftInput()V
    .locals 1

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setPendingShowSoftInputRequest(Z)V

    .line 119
    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->scheduleShowSoftInputInner()V

    .line 120
    return-void
.end method

.method scheduleShowSoftInputInner()V
    .locals 5

    .line 125
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->hasPendingShowSoftInputRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 131
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-direct {p0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setPendingShowSoftInputRequest(Z)V

    goto :goto_1

    .line 136
    :cond_1
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 127
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setPendingShowSoftInputRequest(Z)V

    .line 128
    return-void

    .line 140
    :cond_3
    :goto_1
    return-void
.end method
