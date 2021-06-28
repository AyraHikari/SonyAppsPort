.class public Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;
.super Landroid/os/AsyncTask;
.source "GetMetadataTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:I

.field private final mAppContext:Landroid/content/Context;

.field private final mFolderId:Ljava/lang/String;

.field private final mServiceId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mAppContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mFolderId:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mAccountId:I

    .line 33
    iput p4, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mServiceId:I

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 21
    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 26
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 39
    iget p1, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mServiceId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mAppContext:Landroid/content/Context;

    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mAccountId:I

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->mFolderId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->fetchAndUpdateMetadataForFolder(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
