.class Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;
.super Ljava/lang/Object;
.source "DeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/delete/DeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetainData"
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

.field final mLaunchedDirectoryAccessDlg:Z

.field final mLaunchedSdcardAccessDlg:Z

.field final mSdcardAccessDialogType:I

.field final mShowingDeleteDialog:Z

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
.method constructor <init>(Ljava/util/List;Ljava/util/List;ZZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;ZZZI)V"
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mDeleteFiles:Ljava/util/List;

    .line 563
    iput-object p2, p0, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mStorageVolumes:Ljava/util/List;

    .line 564
    iput-boolean p3, p0, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mShowingDeleteDialog:Z

    .line 565
    iput-boolean p4, p0, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mLaunchedDirectoryAccessDlg:Z

    .line 566
    iput-boolean p5, p0, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mLaunchedSdcardAccessDlg:Z

    .line 567
    iput p6, p0, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mSdcardAccessDialogType:I

    return-void
.end method
