.class public Lcom/sonyericsson/music/datacollection/firebase/FirebaseQuickPlaySelectionTask;
.super Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;
.source "FirebaseQuickPlaySelectionTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
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

    .line 19
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    const-string v1, "music_quickPlaySetting"

    .line 22
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayType(Landroid/content/Context;)Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
