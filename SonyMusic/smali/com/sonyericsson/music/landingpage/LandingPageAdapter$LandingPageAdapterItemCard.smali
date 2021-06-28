.class Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;
.super Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;
.source "LandingPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LandingPageAdapterItemCard"
.end annotation


# instance fields
.field private final mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILcom/sonyericsson/music/landingpage/card/LandingPageCard;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    .line 793
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    if-eqz p3, :cond_0

    .line 798
    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    return-void

    .line 796
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Card must be provided to the adapter item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;)Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    return-object p0
.end method


# virtual methods
.method public attachedToWindow()V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->attachedToWindow()V

    :cond_0
    return-void
.end method

.method dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method getCard()Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    return-object v0
.end method

.method resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->mCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
