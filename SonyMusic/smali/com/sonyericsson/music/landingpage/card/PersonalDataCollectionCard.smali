.class public Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;
.super Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
.source "PersonalDataCollectionCard.java"

# interfaces
.implements Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;


# static fields
.field public static final MINIMUM_INTERACTION_COUNT:I = 0xf


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

    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 96
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setPersonalDataCollectionCardDismissed(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setPersonalDataCollectionConsented(Landroid/content/Context;I)V

    .line 104
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPersonalDataCollectionConsented(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->mAdapterListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;

    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;->removeCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachedToWindow()V
    .locals 0

    return-void
.end method

.method public dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onCardNegativeActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->dismissAction(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onCardPositiveActionClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 78
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    const-class v1, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "title"

    const v2, 0x7f1001b7

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 64
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    .line 66
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->resetViewHolder()V

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_0
    return-void
.end method

.method public setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 46
    instance-of v0, p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    const v0, 0x7f1001b7

    .line 48
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setTitle(I)V

    const v0, 0x7f100180

    .line 49
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setText(I)V

    const v0, 0x7f080185

    .line 50
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImage(I)V

    const v0, 0x800053

    .line 51
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImageGravity(I)V

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setImageFlipped(Landroid/content/Context;)V

    :cond_0
    const v0, 0x7f100176

    .line 56
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setupPositiveAction(I)V

    const v0, 0x7f100174

    .line 57
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setupNegativeAction(I)V

    .line 58
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/landingpage/card/CardHolder;->setListener(Lcom/sonyericsson/music/landingpage/card/CardActionClickListener;)V

    :cond_1
    return-void
.end method
