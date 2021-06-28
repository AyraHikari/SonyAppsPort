.class public Lcom/sonyericsson/music/datacollection/firebase/FirebaseBuildTypeTask;
.super Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;
.source "FirebaseBuildTypeTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public permissionsGranted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    const-string v1, "deviceBuildType"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 18
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
