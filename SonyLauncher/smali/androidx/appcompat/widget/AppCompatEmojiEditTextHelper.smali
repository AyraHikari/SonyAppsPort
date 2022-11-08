.class Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;
.super Ljava/lang/Object;
.source "AppCompatEmojiEditTextHelper.java"


# instance fields
.field private final mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

.field private final mView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/EditText;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    .line 51
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    .line 53
    return-void
.end method


# virtual methods
.method getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;

    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method initKeyListener()V
    .locals 4

    .line 88
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    .line 89
    .local v0, "wasFocusable":Z
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    .line 90
    .local v1, "inputType":I
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 92
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 93
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 94
    return-void
.end method

.method isEnabled()Z
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->isEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 62
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    .line 67
    .local v2, "enabled":Z
    :try_start_0
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 71
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    nop

    .line 73
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->setEnabled(Z)V

    .line 74
    return-void

    .line 71
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    throw v3
.end method

.method onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 149
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 103
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->setEnabled(Z)V

    .line 104
    return-void
.end method
