.class Lcom/android/launcher3/config/FlagTogglerPrefUi$1;
.super Landroidx/preference/PreferenceDataStore;
.source "FlagTogglerPrefUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/config/FlagTogglerPrefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/config/FlagTogglerPrefUi;


# direct methods
.method constructor <init>(Lcom/android/launcher3/config/FlagTogglerPrefUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/config/FlagTogglerPrefUi;

    .line 49
    iput-object p1, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi$1;->this$0:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 69
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 70
    .local v1, "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    iget-object v2, v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi$1;->this$0:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    invoke-static {v0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->-$$Nest$fgetmContext(Lcom/android/launcher3/config/FlagTogglerPrefUi;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "featureFlags"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-boolean v2, v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    .line 72
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    return v0

    .line 74
    .end local v1    # "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    return p2
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 53
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 54
    .local v1, "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    iget-object v2, v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi$1;->this$0:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    invoke-static {v2}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->-$$Nest$fgetmContext(Lcom/android/launcher3/config/FlagTogglerPrefUi;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "featureFlags"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 56
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 57
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v3, v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    if-ne p2, v3, :cond_0

    .line 58
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 60
    :cond_0
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi$1;->this$0:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    invoke-static {v3}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->-$$Nest$mupdateMenu(Lcom/android/launcher3/config/FlagTogglerPrefUi;)V

    .line 64
    .end local v1    # "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method
