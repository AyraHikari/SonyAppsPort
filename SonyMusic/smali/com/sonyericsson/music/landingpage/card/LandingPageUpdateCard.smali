.class public Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;
.super Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
.source "LandingPageUpdateCard.java"

# interfaces
.implements Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;


# static fields
.field private static final GOOGLE_PLAY_PREFIX:Ljava/lang/String; = "market://details?id="


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

.field private final mLatestAvailableVersionCode:I

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
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    .line 35
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    .line 36
    iput p3, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mLatestAvailableVersionCode:I

    return-void
.end method

.method private dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mLatestAvailableVersionCode:I

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setUpdateCardDismissed(Landroid/content/Context;I)V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;->removeCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method private getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    return-object v0
.end method

.method private sendLogEventFirstSeen()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget v1, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mLatestAvailableVersionCode:I

    .line 116
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isUpdateCardFirstSeenReported(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "update_card_first_seen"

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget v1, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->mLatestAvailableVersionCode:I

    .line 120
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setUpdateCardFirstSeenReported(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachedToWindow()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->sendLogEventFirstSeen()V

    return-void
.end method

.method public dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->sendLogEventFirstSeen()V

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const-string v0, "update_card_dismiss"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    return-void
.end method

.method public onCardNegativeActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->sendLogEventFirstSeen()V

    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const-string v0, "update_card_not_now"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    return-void
.end method

.method public onCardPositiveActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isGooglePlayStoreEnabled(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;->sendLogEventFirstSeen()V

    const-string v0, "update_card_update"

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 59
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    .line 61
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->resetViewHolder()V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_0
    return-void
.end method

.method public setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 46
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    const v0, 0x7f08005e

    .line 48
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImage(I)V

    const v0, 0x7f100180

    .line 49
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setTitle(I)V

    const v0, 0x7f10017c

    .line 50
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setText(I)V

    const v0, 0x7f100179

    .line 51
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setupPositiveAction(I)V

    const v0, 0x7f100176

    .line 52
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setupNegativeAction(I)V

    .line 53
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_0
    return-void
.end method
