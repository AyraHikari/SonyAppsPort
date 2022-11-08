.class Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setAnalyticsCollectionEnabled(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$enabled:Z

.field final synthetic val$shouldSetUserProperty:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$appContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$enabled:Z

    iput-boolean p3, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$shouldSetUserProperty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$appContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$enabled:Z

    invoke-static {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->setAnalyticsCollectionEnabled(Landroid/content/Context;Z)V

    .line 168
    iget-boolean v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$shouldSetUserProperty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;->val$appContext:Landroid/content/Context;

    const-string v1, "music_sharePersonalData"

    .line 170
    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getPersonalDataCollectionSettingValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
