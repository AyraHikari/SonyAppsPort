.class public Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mFocusRequest:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "audio"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method private abandonAudioFocus()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private abandonAudioFocusPreO(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    return p1
.end method

.method private requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 47
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 49
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 54
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mFocusRequest:Landroid/media/AudioFocusRequest;

    .line 56
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    return p1
.end method

.method private requestAudioFocusPreO(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->abandonAudioFocus()I

    move-result p1

    return p1

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->abandonAudioFocusPreO(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    return p1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 31
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;I)I

    move-result p1

    return p1

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->requestAudioFocusPreO(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    return p1
.end method
