.class public Lcom/sonyericsson/music/landingpage/card/CardHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mCardImageBackground:Landroid/widget/FrameLayout;

.field private final mCardImageView:Landroid/widget/ImageView;

.field private mCardListener:Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;

.field private final mCardNegativeButton:Landroid/widget/Button;

.field private final mCardPositiveButton:Landroid/widget/Button;

.field private final mCardText:Landroid/widget/TextView;

.field private final mCardTitle:Landroid/widget/TextView;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090064

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageBackground:Landroid/widget/FrameLayout;

    const v0, 0x7f090065

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageView:Landroid/widget/ImageView;

    const v0, 0x7f090069

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardTitle:Landroid/widget/TextView;

    const v0, 0x7f090068

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardText:Landroid/widget/TextView;

    const v0, 0x7f090067

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardPositiveButton:Landroid/widget/Button;

    const v0, 0x7f090066

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardNegativeButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method getTag()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardListener:Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardListener:Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;

    invoke-interface {p1, p0}, Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;->onCardPositiveActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardListener:Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;

    invoke-interface {p1, p0}, Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;->onCardNegativeActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method resetViewHolder()V
    .locals 2

    const/16 v0, 0x11

    .line 122
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImageGravity(I)V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardPositiveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setImage(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setImageBackgroundColor(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method setImageFlipped(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageView:Landroid/widget/ImageView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method setImageGravity(I)V
    .locals 2

    .line 73
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardListener:Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;

    return-void
.end method

.method setTag(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mTag:Ljava/lang/String;

    return-void
.end method

.method setText(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTitle(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setupNegativeAction(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardNegativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method setupPositiveAction(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardPositiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 108
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/card/CardHolder;->mCardPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
