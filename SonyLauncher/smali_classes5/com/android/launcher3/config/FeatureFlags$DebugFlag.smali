.class public Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
.super Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/config/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugFlag"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field protected mCurrentValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "description"    # Ljava/lang/String;

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Ljava/lang/String;Z)V

    .line 362
    iput-object p3, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->description:Ljava/lang/String;

    .line 363
    iget-boolean v0, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    iput-boolean v0, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    .line 364
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->-$$Nest$sfgetsDebugFlags()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 365
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->-$$Nest$sfgetsDebugFlags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "src"    # Ljava/lang/StringBuilder;

    .line 381
    invoke-super {p0, p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public get()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 375
    const-string v0, "featureFlags"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    .line 376
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    .line 377
    return-void
.end method
