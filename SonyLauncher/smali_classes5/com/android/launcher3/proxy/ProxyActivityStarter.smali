.class public Lcom/android/launcher3/proxy/ProxyActivityStarter;
.super Landroid/app/Activity;
.source "ProxyActivityStarter.java"


# static fields
.field public static final EXTRA_PARAMS:Ljava/lang/String; = "start-activity-params"

.field private static final TAG:Ljava/lang/String; = "ProxyActivityStarter"


# instance fields
.field private mParams:Lcom/android/launcher3/proxy/StartActivityParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/android/launcher3/proxy/StartActivityParams;

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher3/proxy/ProxyActivityStarter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "start-activity-params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    const v1, 0x10208000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 79
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v0, v0, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/launcher3/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishAndRemoveTask()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->setVisible(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start-activity-params"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/proxy/StartActivityParams;

    iput-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    .line 41
    if-nez v1, :cond_0

    .line 42
    const-string v0, "ProxyActivityStarter"

    const-string v1, "Proxy activity started without params"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishAndRemoveTask()V

    .line 44
    return-void

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v2, v2, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    iget-object v3, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v3, v3, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 55
    return-void

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    if-eqz v1, :cond_3

    .line 57
    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v3, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v4, v1, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v5, v1, Lcom/android/launcher3/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v6, v1, Lcom/android/launcher3/proxy/StartActivityParams;->flagsMask:I

    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v7, v1, Lcom/android/launcher3/proxy/StartActivityParams;->flagsValues:I

    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v8, v1, Lcom/android/launcher3/proxy/StartActivityParams;->extraFlags:I

    iget-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v9, v1, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 66
    :cond_3
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3}, Lcom/android/launcher3/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishAndRemoveTask()V

    .line 68
    return-void
.end method
