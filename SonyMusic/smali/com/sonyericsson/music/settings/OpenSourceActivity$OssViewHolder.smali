.class Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OpenSourceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/settings/OpenSourceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OssViewHolder"
.end annotation


# instance fields
.field private final mText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901fb

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;->mText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method setText(Ljava/lang/String;)V
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;->mText:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 129
    iget-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 130
    iget-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;->mText:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
