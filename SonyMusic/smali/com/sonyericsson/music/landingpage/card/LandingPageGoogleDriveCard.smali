.class public Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;
.super Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
.source "LandingPageGoogleDriveCard.java"

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
.method private constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    .line 36
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGoogleDriveCardDismissed(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;->removeCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method private getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    return-object v0
.end method

.method private sendLogEventFirstSeen()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isGoogleDriveCardFirstSeenReported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "drive_card_first_seen"

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 146
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGoogleDriveCardFirstSeenReported(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public static showIn(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageAdapter;)Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
    .locals 1

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isGoogleDriveAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isGoogleDriveCardDismissed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isGoogleDriveUsed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->addCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public attachedToWindow()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->sendLogEventFirstSeen()V

    return-void
.end method

.method public dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->sendLogEventFirstSeen()V

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const-string v0, "drive_card_dismiss"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    return-void
.end method

.method public onCardNegativeActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->sendLogEventFirstSeen()V

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const-string v0, "drive_card_got_it"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    return-void
.end method

.method public onCardPositiveActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isGoogleDriveAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->DRIVE_CARD_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->googleSignIn(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)V

    .line 109
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->sendLogEventFirstSeen()V

    const-string v0, "drive_card_show_me"

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->sendLogEvent(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 86
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    .line 90
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->resetViewHolder()V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_0
    return-void
.end method

.method public setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 63
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    const v1, 0x7f06006d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImageBackgroundColor(I)V

    const v0, 0x7f080184

    .line 71
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImage(I)V

    const/16 v0, 0x50

    .line 72
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImageGravity(I)V

    const v0, 0x7f10017f

    .line 74
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setTitle(I)V

    const v0, 0x7f10017b

    .line 75
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setText(I)V

    const v0, 0x7f100177

    .line 76
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setupPositiveAction(I)V

    const v0, 0x7f100173

    .line 77
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setupNegativeAction(I)V

    .line 79
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_0
    return-void
.end method
