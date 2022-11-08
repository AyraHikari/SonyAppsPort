.class public Lcom/android/launcher3/MainProcessInitializer;
.super Ljava/lang/Object;
.source "MainProcessInitializer.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const-class v0, Lcom/android/launcher3/MainProcessInitializer;

    sget v1, Lcom/android/launcher3/R$string;->main_process_initializer_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/MainProcessInitializer;

    .line 35
    invoke-virtual {v0, p0}, Lcom/android/launcher3/MainProcessInitializer;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/FileLog;->setDir(Ljava/io/File;)V

    .line 40
    invoke-static {p1}, Lcom/android/launcher3/config/FeatureFlags;->initialize(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method
