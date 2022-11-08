.class public Lcom/sonymobile/launcher/idd/Idd$CustomOrder;
.super Ljava/lang/Object;
.source "Idd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/Idd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomOrder"
.end annotation


# static fields
.field private static final REARRANGE_PREF_PEFFIX:Ljava/lang/String; = "xperia_idd_rearrange_"

.field private static sCustomOrder:Lcom/sonymobile/launcher/idd/Idd$CustomOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/launcher/idd/Idd$CustomOrder;
    .locals 1

    .line 223
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->sCustomOrder:Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    invoke-direct {v0}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->sCustomOrder:Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    .line 226
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->sCustomOrder:Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    return-object v0
.end method

.method private reset(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 250
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$sfgetsPreferencesLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 252
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "xperia_idd_rearrange_REARRANGE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xperia_idd_rearrange_MAKE_FOLDER"

    .line 253
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 254
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    nop

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onRearranged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rearrangeType"    # Ljava/lang/String;

    .line 259
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xperia_idd_rearrange_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$sfgetsPreferencesLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 265
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    monitor-exit v2

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public send(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 230
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->reset(Landroid/content/Context;)V

    .line 232
    return-void

    .line 234
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;

    invoke-direct {v1, p1}, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;-><init>(Landroid/content/Context;)V

    .line 237
    .local v1, "event":Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$sfgetsPreferencesLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 238
    :try_start_0
    const-string v3, "xperia_idd_rearrange_REARRANGE"

    .line 239
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 240
    .local v3, "rearrange":Z
    const-string v5, "xperia_idd_rearrange_MAKE_FOLDER"

    .line 241
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 243
    .local v4, "makeFolder":Z
    invoke-virtual {v1, p2}, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->folderCount(Lcom/android/launcher3/Launcher;)Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->rearrange(ZZ)Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;

    .line 244
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->reset(Landroid/content/Context;)V

    .line 246
    .end local v3    # "rearrange":Z
    .end local v4    # "makeFolder":Z
    monitor-exit v2

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
