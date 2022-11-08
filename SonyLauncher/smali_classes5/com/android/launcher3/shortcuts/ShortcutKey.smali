.class public Lcom/android/launcher3/shortcuts/ShortcutKey;
.super Lcom/android/launcher3/util/ComponentKey;
.source "ShortcutKey.java"


# static fields
.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "shortcut_id"

.field private static final INTENT_CATEGORY:Ljava/lang/String; = "com.android.launcher3.DEEP_SHORTCUT"


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "id"    # Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 23
    return-void
.end method

.method public static fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 4
    .param p0, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 46
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 46
    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 51
    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "shortcutId":Ljava/lang/String;
    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    return-object v0
.end method

.method public static makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;
    .locals 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 60
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    const-string v1, "com.android.launcher3.DEEP_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 71
    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    return-object v0
.end method


# virtual methods
.method public buildRequest(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/ShortcutRequest;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
