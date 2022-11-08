.class public Lcom/android/launcher3/graphics/GridCustomizationsProvider;
.super Landroid/content/ContentProvider;
.source "GridCustomizationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    }
.end annotation


# static fields
.field private static final BOOLEAN_VALUE:Ljava/lang/String; = "boolean_value"

.field private static final GET_ICON_THEMED:Ljava/lang/String; = "/get_icon_themed"

.field private static final ICON_THEMED:Ljava/lang/String; = "/icon_themed"

.field private static final KEY_CALLBACK:Ljava/lang/String; = "callback"

.field private static final KEY_COLS:Ljava/lang/String; = "cols"

.field private static final KEY_DEFAULT_GRID:Ljava/lang/String; = "/default_grid"

.field private static final KEY_IS_DEFAULT:Ljava/lang/String; = "is_default"

.field private static final KEY_LIST_OPTIONS:Ljava/lang/String; = "/list_options"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PREVIEW_COUNT:Ljava/lang/String; = "preview_count"

.field private static final KEY_ROWS:Ljava/lang/String; = "rows"

.field private static final KEY_SURFACE_PACKAGE:Ljava/lang/String; = "surface_package"

.field private static final METHOD_GET_PREVIEW:Ljava/lang/String; = "get_preview"

.field private static final SET_ICON_THEMED:Ljava/lang/String; = "/set_icon_themed"

.field private static final TAG:Ljava/lang/String; = "GridCustomizationsProvider"


# instance fields
.field private final mActivePreviews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mdestroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    return-void
.end method

.method private declared-synchronized destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    monitor-enter p0

    .line 206
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    .line 210
    iget-object v0, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getHostToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 211
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/graphics/GridCustomizationsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getHostToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    .line 213
    .local v0, "cached":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    if-ne v0, p1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {v2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getHostToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local p0    # "this":Lcom/android/launcher3/graphics/GridCustomizationsProvider;
    :cond_1
    monitor-exit p0

    return-void

    .line 205
    .end local v0    # "cached":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    .end local p1    # "observer":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 207
    .restart local p0    # "this":Lcom/android/launcher3/graphics/GridCustomizationsProvider;
    .restart local p1    # "observer":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized getPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "request"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "observer":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    :try_start_0
    new-instance v1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 179
    .local v1, "renderer":Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
    iget-object v2, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getHostToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    invoke-direct {p0, v2}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    .line 181
    new-instance v2, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;-><init>(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    move-object v0, v2

    .line 182
    iget-object v2, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getHostToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadAsync()V

    .line 185
    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getHostToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 187
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "surface_package"

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Landroid/os/Handler;

    sget-object v5, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 191
    invoke-virtual {v5}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 192
    .local v3, "messenger":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 193
    .local v4, "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 194
    const-string v5, "callback"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-object v2

    .line 173
    .end local v0    # "observer":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    .end local v1    # "renderer":Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
    .end local v2    # "result":Landroid/os/Bundle;
    .end local v3    # "messenger":Landroid/os/Messenger;
    .end local v4    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/android/launcher3/graphics/GridCustomizationsProvider;
    .end local p1    # "request":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 196
    .restart local v0    # "observer":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    .restart local p1    # "request":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "GridCustomizationsProvider"

    const-string v3, "Unable to generate preview"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 173
    .end local v0    # "observer":Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local p1    # "request":Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 160
    const-string v3, "android.permission.BIND_WALLPAPER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    return-object v1

    .line 166
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_2

    const-string v0, "get_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getPreview(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 167
    :cond_2
    :goto_0
    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 110
    const-string v0, "vnd.android.cursor.dir/launcher_grid"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "/get_icon_themed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "/icon_themed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "/list_options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_0
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "boolean_value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 100
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 101
    return-object v0

    .line 83
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    :pswitch_1
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "name"

    const-string v4, "rows"

    const-string v5, "cols"

    const-string v6, "preview_count"

    const-string v7, "is_default"

    filled-new-array {v1, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 85
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    sget-object v8, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 86
    .local v8, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/InvariantDeviceProfile;->parseAllGridOptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 87
    .local v10, "gridOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v11

    iget-object v12, v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    .line 88
    invoke-virtual {v11, v1, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v11

    iget v12, v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    .line 89
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v11

    iget v12, v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    .line 90
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v11

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v11

    iget v12, v8, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v13, v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    if-ne v12, v13, :cond_1

    iget v12, v8, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v13, v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    if-ne v12, v13, :cond_1

    move v12, v3

    goto :goto_3

    :cond_1
    move v12, v2

    .line 92
    :goto_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 94
    .end local v10    # "gridOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    goto :goto_2

    .line 95
    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x48e391ac -> :sswitch_2
        0x4d8a16b2 -> :sswitch_1
        0x7fc812c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "/icon_themed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "/set_icon_themed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "/default_grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 154
    return v3

    .line 146
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    const-string v1, "boolean_value"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "themed_icons"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    :cond_1
    return v2

    .line 127
    :pswitch_1
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "gridName":Ljava/lang/String;
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 130
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    const/4 v4, 0x0

    .line 131
    .local v4, "match":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->parseAllGridOptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 132
    .local v6, "option":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    iget-object v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    move-object v4, v6

    .line 134
    goto :goto_3

    .line 136
    .end local v6    # "option":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    :cond_2
    goto :goto_2

    .line 137
    :cond_3
    :goto_3
    if-nez v4, :cond_4

    .line 138
    return v3

    .line 141
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x5cb99fcd -> :sswitch_2
        -0x49eef22b -> :sswitch_1
        0x4d8a16b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
