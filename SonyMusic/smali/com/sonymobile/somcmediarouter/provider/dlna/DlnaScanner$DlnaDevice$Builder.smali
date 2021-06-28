.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
.super Ljava/lang/Object;
.source "DlnaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mDlnaCapabilities:I

.field private mDlnaIconUri:Landroid/net/Uri;

.field private mDlnaUdn:Ljava/lang/String;

.field private mIsVolumeControlSuppoted:Z

.field private mModel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSupportCategory:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaCapabilities:I

    .line 329
    iput-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mIsVolumeControlSuppoted:Z

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)I
    .locals 0

    .line 322
    iget p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaCapabilities:I

    return p0
.end method

.method static synthetic access$1300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mModel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaUdn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mSupportCategory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Landroid/net/Uri;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Z
    .locals 0

    .line 322
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mIsVolumeControlSuppoted:Z

    return p0
.end method


# virtual methods
.method build()Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;
    .locals 1

    .line 375
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    invoke-direct {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)V

    return-object v0
.end method

.method public setCapabilities(I)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
    .locals 0

    .line 332
    iput p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaCapabilities:I

    return-object p0
.end method

.method public setDlnaIconUri(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaIconUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 357
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaIconUri:Landroid/net/Uri;

    :goto_0
    return-object p0
.end method

.method public setDlnaUdn(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mDlnaUdn:Ljava/lang/String;

    return-object p0
.end method

.method public setDlnaVolumeControlSupported(I)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 369
    iput-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mIsVolumeControlSuppoted:Z

    :cond_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setSupportCategory(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->mSupportCategory:Ljava/lang/String;

    return-object p0
.end method
