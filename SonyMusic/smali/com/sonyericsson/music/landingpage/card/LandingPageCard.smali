.class public abstract Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
.super Ljava/lang/Object;
.source "LandingPageCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;
    }
.end annotation


# instance fields
.field private mViewType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 16
    iput v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->mViewType:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 16
    iput v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->mViewType:I

    .line 34
    iput p1, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->mViewType:I

    return-void
.end method


# virtual methods
.method public abstract attachedToWindow()V
.end method

.method public abstract dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public getViewType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->mViewType:I

    return v0
.end method

.method public abstract resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method protected sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 44
    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method
