.class Lcom/google/android/material/textfield/NoEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "NoEndIconDelegate.java"


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1, "textInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 27
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/android/material/textfield/NoEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/NoEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/material/textfield/NoEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
