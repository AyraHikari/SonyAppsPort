.class abstract Lcom/sonyericsson/music/library/store/StoreResponse;
.super Ljava/lang/Object;
.source "StoreResponse.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getArtist(I)Ljava/lang/String;
.end method

.method public abstract getFullSizeImage(I)Ljava/lang/String;
.end method

.method public abstract getLaunchIntent(Landroid/content/Context;I)Landroid/content/Intent;
.end method

.method public abstract getSize()I
.end method

.method public abstract getTitle(I)Ljava/lang/String;
.end method

.method public abstract getWebLink(I)Ljava/lang/String;
.end method

.method public abstract getWebListSizeImage(I)Ljava/lang/String;
.end method

.method public abstract isHighResolution(I)Z
.end method

.method public abstract setMaxSize(I)V
.end method
