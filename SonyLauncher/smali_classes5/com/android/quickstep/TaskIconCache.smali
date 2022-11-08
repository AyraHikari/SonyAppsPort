.class public Lcom/android/quickstep/TaskIconCache;
.super Ljava/lang/Object;
.source "TaskIconCache.java"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private mDefaultIconBase:Lcom/android/launcher3/icons/BitmapInfo;

.field private final mDefaultIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/util/TaskKeyLruCache<",
            "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;


# direct methods
.method public static synthetic $r8$lambda$NnvGap68ujE6zsDUX4i7gDT-Ld4(Lcom/android/quickstep/TaskIconCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache;->resetFactory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCacheEntry(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskIconCache;->getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "iconProvider"    # Lcom/android/launcher3/icons/IconProvider;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIconBase:Lcom/android/launcher3/icons/BitmapInfo;

    .line 74
    iput-object p1, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 76
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 77
    iput-object p3, p0, Lcom/android/quickstep/TaskIconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$integer;->recentsIconCacheSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 82
    .local v1, "cacheSize":I
    new-instance v2, Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-direct {v2, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    .line 84
    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 85
    return-void
.end method

.method private getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 206
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "taskLabel":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "applicationLabel":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq p2, v3, :cond_2

    .line 213
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 214
    :cond_2
    move-object v3, v2

    :goto_1
    nop

    .line 215
    .local v3, "badgedApplicationLabel":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    move-object v4, v3

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    :goto_2
    return-object v4
.end method

.method private getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I
    .param p3, "primaryColor"    # I
    .param p4, "isInstantApp"    # Z

    .line 245
    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v0

    .line 246
    .local v0, "bif":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->disableColorExtraction()V

    .line 247
    invoke-virtual {v0, p3}, Lcom/android/launcher3/icons/BaseIconFactory;->setWrapperBackgroundColor(I)V

    .line 250
    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 251
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setInstantApp(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v1

    .line 250
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 250
    :cond_0
    return-object v1

    .line 245
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .locals 9
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 143
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    .line 144
    .local v0, "entry":Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    if-eqz v0, :cond_0

    .line 145
    return-object v0

    .line 148
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 149
    .local v1, "desc":Landroid/app/ActivityManager$TaskDescription;
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 150
    .local v2, "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    const/4 v3, 0x0

    .line 153
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v4, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;-><init>(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry-IA;)V

    move-object v0, v4

    .line 157
    iget v4, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, v1, v4}, Lcom/android/quickstep/TaskIconCache;->getIcon(Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 158
    .local v4, "icon":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 159
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v6, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 162
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v7

    const/4 v8, 0x0

    .line 159
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v5, v6}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v5

    .line 166
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget v7, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 165
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_2

    .line 168
    iget-object v5, p0, Lcom/android/quickstep/TaskIconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 169
    invoke-virtual {v5, v3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 171
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v7

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 172
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    .line 168
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    .line 173
    .local v5, "bitmapInfo":Lcom/android/launcher3/icons/BitmapInfo;
    iget-object v6, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 174
    .end local v5    # "bitmapInfo":Lcom/android/launcher3/icons/BitmapInfo;
    goto :goto_0

    .line 175
    :cond_2
    iget v5, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, v5}, Lcom/android/quickstep/TaskIconCache;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 180
    :goto_0
    iget-object v5, p0, Lcom/android/quickstep/TaskIconCache;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    if-nez v3, :cond_3

    .line 183
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v5

    .line 184
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget v7, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 183
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 186
    :cond_3
    if-eqz v3, :cond_4

    .line 187
    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p0, v3, v5, v6}, Lcom/android/quickstep/TaskIconCache;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    .line 192
    :cond_4
    iget-object v5, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6, v0}, Lcom/android/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 193
    return-object v0
.end method

.method private getDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "userId"    # I

    .line 221
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIconBase:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 224
    .local v1, "bif":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->makeDefaultIcon()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIconBase:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/quickstep/TaskIconCache;
    .end local p1    # "userId":I
    :cond_0
    :goto_0
    throw v2

    .line 229
    .end local v1    # "bif":Lcom/android/launcher3/icons/BaseIconFactory;
    .restart local p0    # "this":Lcom/android/quickstep/TaskIconCache;
    .restart local p1    # "userId":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    if-ltz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 233
    .local v1, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_5
    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIconBase:Lcom/android/launcher3/icons/BitmapInfo;

    new-instance v4, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v4}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 234
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    .line 235
    .local v3, "info":Lcom/android/launcher3/icons/BitmapInfo;
    iget-object v4, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    iget-object v4, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 237
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    :cond_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 236
    return-object v4

    .line 232
    .end local v3    # "info":Lcom/android/launcher3/icons/BitmapInfo;
    :catchall_2
    move-exception v3

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/quickstep/TaskIconCache;
    .end local p1    # "userId":I
    :cond_4
    :goto_2
    throw v3

    .line 239
    .end local v1    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    .end local v2    # "index":I
    .restart local p0    # "this":Lcom/android/quickstep/TaskIconCache;
    .restart local p1    # "userId":I
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method private getIcon(Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "desc"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "userId"    # I

    .line 197
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    nop

    .line 201
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0, p2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/android/launcher3/icons/BaseIconFactory;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->taskbar_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    return-object v0
.end method

.method static synthetic lambda$invalidateCacheEntries$0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "handle"    # Landroid/os/UserHandle;
    .param p2, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 138
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetFactory()V
    .locals 1

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    .line 268
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskKeyLruCache;->evictAll()V

    .line 269
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/TaskIconCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method invalidateCacheEntries(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .line 137
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/TaskIconCache;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method synthetic lambda$invalidateCacheEntries$1$com-android-quickstep-TaskIconCache(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .line 137
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    new-instance v1, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;->removeAll(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 89
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    .line 92
    :cond_0
    return-void
.end method

.method onTaskRemoved(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1
    .param p1, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 134
    return-void
.end method

.method public updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Lcom/android/quickstep/util/CancellableTask;"
        }
    .end annotation

    .line 102
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 103
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Lcom/android/quickstep/TaskIconCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/TaskIconCache$1;-><init>(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    .line 121
    .local v0, "request":Lcom/android/quickstep/util/CancellableTask;, "Lcom/android/quickstep/util/CancellableTask<Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;>;"
    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-object v0
.end method
