.class public Lcom/sonymobile/launcher/XperiaAppInfo;
.super Lcom/android/launcher3/model/data/AppInfo;
.source "XperiaAppInfo.java"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/launcher/XperiaAppInfo;->status:I

    .line 31
    iget-object v0, p0, Lcom/sonymobile/launcher/XperiaAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    new-instance v2, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonymobile/launcher/XperiaAppInfo;->componentName:Landroid/content/ComponentName;

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/launcher/XperiaAppInfo;->componentName:Landroid/content/ComponentName;

    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10200000

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/launcher/XperiaAppInfo;->intent:Landroid/content/Intent;

    .line 42
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sonymobile/launcher/XperiaAppInfo;->title:Ljava/lang/CharSequence;

    .line 46
    :cond_2
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/sonymobile/launcher/XperiaAppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 49
    :cond_3
    return-void
.end method
