.class public Lcom/sonyericsson/music/datacollection/googleanalytics/SendDataPlatformTask;
.super Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;
.source "SendDataPlatformTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public permissionsGranted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformUtils;->sendDataPlatformUserData(Landroid/content/Context;)V

    return-void
.end method
