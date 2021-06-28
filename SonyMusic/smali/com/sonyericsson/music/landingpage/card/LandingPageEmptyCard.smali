.class public Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;
.super Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
.source "LandingPageEmptyCard.java"

# interfaces
.implements Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;


# instance fields
.field private final mAdapterListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMusicActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/MusicActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    .line 27
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 78
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setEmptyPromoDismissed(Landroid/content/Context;Z)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;->removeCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method private getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    return-object v0
.end method

.method private sendLogEventFirstSeen()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isEmptyCardFirstSeenReported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "empty_card_first_seen"

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 96
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setEmptyCardFirstSeenReported(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachedToWindow()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->sendLogEventFirstSeen()V

    return-void
.end method

.method public dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->sendLogEventFirstSeen()V

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const-string v0, "empty_card_dismiss"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    return-void
.end method

.method public onCardNegativeActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->sendLogEventFirstSeen()V

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const-string v0, "empty_card_got_it"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    return-void
.end method

.method public onCardPositiveActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 49
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    .line 51
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->resetViewHolder()V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_0
    return-void
.end method

.method public setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 37
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    const v0, 0x7f080186

    .line 39
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImage(I)V

    const v0, 0x7f10017f

    .line 40
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setTitle(I)V

    const v0, 0x7f10017b

    .line 41
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setText(I)V

    const v0, 0x7f100171

    .line 42
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setupNegativeAction(I)V

    .line 43
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_0
    return-void
.end method
