.class public Lcom/android/launcher3/icons/LauncherIcons;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "LauncherIcons.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static sPool:Lcom/android/launcher3/icons/LauncherIcons;

.field private static sPoolId:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private final mPoolId:I

.field private next:Lcom/android/launcher3/icons/LauncherIcons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillResIconDpi"    # I
    .param p3, "iconBitmapSize"    # I
    .param p4, "poolId"    # I

    .line 72
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/IconShape;->enableShapeDetection()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    .line 73
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/LauncherIcons;->mMonoIconEnabled:Z

    .line 74
    iput p4, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    .line 75
    return-void
.end method

.method public static clearPool()V
    .locals 2

    .line 61
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    .line 63
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    instance-of v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->newLauncherIcons(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    if-eqz v1, :cond_1

    .line 48
    nop

    .line 49
    .local v1, "m":Lcom/android/launcher3/icons/LauncherIcons;
    iget-object v2, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    sput-object v2, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    .line 50
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    .line 51
    monitor-exit v0

    return-object v1

    .line 53
    .end local v1    # "m":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_1
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    .line 54
    .local v1, "poolId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 57
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v2, Lcom/android/launcher3/icons/LauncherIcons;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/launcher3/icons/LauncherIcons;-><init>(Landroid/content/Context;III)V

    return-object v2

    .line 54
    .end local v0    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v1    # "poolId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 96
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 81
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    iget v2, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    if-eq v1, v2, :cond_0

    .line 83
    monitor-exit v0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->clear()V

    .line 88
    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    iput-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    .line 89
    sput-object p0, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
