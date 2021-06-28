.class public Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;
.super Ljava/lang/Object;
.source "DlnaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DlnaDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;
    }
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
.method public constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)V
    .locals 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mDlnaCapabilities:I

    .line 320
    iput-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mIsVolumeControlSuppoted:Z

    .line 380
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mDlnaCapabilities:I

    .line 381
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->access$1300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mName:Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->access$1400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mModel:Ljava/lang/String;

    .line 383
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mDlnaUdn:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mSupportCategory:Ljava/lang/String;

    .line 385
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->access$1700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mDlnaIconUri:Landroid/net/Uri;

    .line 386
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->access$1800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mIsVolumeControlSuppoted:Z

    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mDlnaCapabilities:I

    return v0
.end method

.method public getDlnaIconUri()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mDlnaIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDlnaUdn()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mDlnaUdn:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportCategory()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mSupportCategory:Ljava/lang/String;

    return-object v0
.end method

.method public isDlnaVolumeControlSupported()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->mIsVolumeControlSuppoted:Z

    return v0
.end method
