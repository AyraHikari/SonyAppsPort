.class public Lcom/sonyericsson/music/metadata/cloud/DriveFileList;
.super Ljava/lang/Object;
.source "DriveFileList.java"


# instance fields
.field public mFiles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "files"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;"
        }
    .end annotation
.end field

.field public mNextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nextPageToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
