.class interface abstract Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;
.super Ljava/lang/Object;
.source "CloudAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/CloudAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CloudListener"
.end annotation


# virtual methods
.method public abstract onClick(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;II)V
.end method

.method public abstract onDownloadClick(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)V
.end method
