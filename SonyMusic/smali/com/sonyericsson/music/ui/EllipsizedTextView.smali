.class public Lcom/sonyericsson/music/ui/EllipsizedTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "EllipsizedTextView.java"


# instance fields
.field private mBlockRequestLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/EllipsizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/EllipsizedTextView;->mBlockRequestLayout:Z

    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/EllipsizedTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/EllipsizedTextView;->mBlockRequestLayout:Z

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/EllipsizedTextView;->init()V

    return-void
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-eqz p1, :cond_0

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private init()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ellipsize must be START or END"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/EllipsizedTextView;->mBlockRequestLayout:Z

    if-nez v0, :cond_0

    .line 58
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/EllipsizedTextView;->mBlockRequestLayout:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/EllipsizedTextView;->ellipsizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/EllipsizedTextView;->mBlockRequestLayout:Z

    return-void
.end method
