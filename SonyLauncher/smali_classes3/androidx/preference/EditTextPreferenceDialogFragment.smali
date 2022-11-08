.class public Landroidx/preference/EditTextPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "EditTextPreferenceDialogFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getEditTextPreference()Landroidx/preference/EditTextPreference;
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragment;

    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragment;-><init>()V

    .line 54
    .local v0, "fragment":Landroidx/preference/EditTextPreferenceDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 55
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v0
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

    .line 78
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 80
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 81
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 83
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 91
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    if-nez p1, :cond_0

    .line 64
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    .line 68
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 118
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
