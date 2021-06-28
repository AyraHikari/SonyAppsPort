.class Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;
.super Ljava/lang/Object;
.source "PrepareDeletionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/delete/PrepareDeletionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreparedData"
.end annotation


# instance fields
.field final mDeleteFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;"
        }
    .end annotation
.end field

.field final mStorageVolumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;->mStorageVolumes:Ljava/util/List;

    .line 132
    iput-object p2, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;->mDeleteFiles:Ljava/util/List;

    return-void
.end method
