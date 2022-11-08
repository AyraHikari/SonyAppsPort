.class public Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
.super Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;
    }
.end annotation


# instance fields
.field private final mIconPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconPool(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mIconPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 4
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 130
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;-><init>(Landroid/content/Context;[Lcom/android/launcher3/util/MainThreadInitializedObject;)V

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mIconPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 134
    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mObjectMap:Ljava/util/Map;

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mObjectMap:Ljava/util/Map;

    sget-object v1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v2, Lcom/android/launcher3/LauncherAppState;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method


# virtual methods
.method public newLauncherIcons(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mIconPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;

    .line 145
    .local v0, "launcherIconsForPreview":Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;
    if-eqz v0, :cond_0

    .line 146
    return-object v0

    .line 148
    :cond_0
    new-instance v8, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;IIILcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$LauncherIconsForPreview-IA;)V

    return-object v8
.end method
