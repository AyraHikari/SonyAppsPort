.class public interface abstract Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;
.super Ljava/lang/Object;
.source "DlnaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanResultCallback"
.end annotation


# virtual methods
.method public abstract updateDlnaList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;)V"
        }
    .end annotation
.end method
