.class public abstract Landroidx/slice/SliceProvider;
.super Landroid/content/ContentProvider;
.source "SliceProvider.java"

# interfaces
.implements Landroidx/core/app/CoreComponentFactory$CompatWrapped;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SliceProvider"

.field private static sClock:Landroidx/slice/Clock;

.field private static sSpecs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private final mAutoGrantPermissions:[Ljava/lang/String;

.field private mCompat:Landroidx/slice/compat/SliceProviderCompat;

.field private final mCompatLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mPinnedSliceUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedSliceUrisLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mCompatLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUrisLock:Ljava/lang/Object;

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 173
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mCompatLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUrisLock:Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Landroidx/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 169
    return-void
.end method

.method private static createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.slice.compat.SlicePermissionActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 373
    const-string v1, "slice_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider_pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 380
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "auth"    # Ljava/lang/String;

    .line 544
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 546
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClock()Landroidx/slice/Clock;
    .locals 1

    .line 639
    sget-object v0, Landroidx/slice/SliceProvider;->sClock:Landroidx/slice/Clock;

    return-object v0
.end method

.method public static getCurrentSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 620
    sget-object v0, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    return-object v0
.end method

.method private static getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 390
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget v1, Landroidx/slice/core/R$string;->abc_slices_permission_request:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 390
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 393
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown calling app"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getSliceProviderCompat()Landroidx/slice/compat/SliceProviderCompat;
    .locals 4

    .line 217
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mCompatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Landroidx/slice/SliceProvider;->mCompat:Landroidx/slice/compat/SliceProviderCompat;

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Landroidx/slice/compat/SliceProviderCompat;

    iget-object v2, p0, Landroidx/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 220
    invoke-virtual {p0, v2}, Landroidx/slice/SliceProvider;->onCreatePermissionManager([Ljava/lang/String;)Landroidx/slice/compat/CompatPermissionManager;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroidx/slice/compat/SliceProviderCompat;-><init>(Landroidx/slice/SliceProvider;Landroidx/slice/compat/CompatPermissionManager;Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/slice/SliceProvider;->mCompat:Landroidx/slice/compat/SliceProviderCompat;

    .line 222
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mCompat:Landroidx/slice/compat/SliceProviderCompat;

    return-object v0

    .line 222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private matchesOurAuthorities(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 300
    array-length v0, v0

    .line 301
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 302
    iget-object v2, p0, Landroidx/slice/SliceProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setAuthorities(Ljava/lang/String;)V
    .locals 3
    .param p1, "authorities"    # Ljava/lang/String;

    .line 284
    if-eqz p1, :cond_1

    .line 285
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 286
    iput-object p1, p0, Landroidx/slice/SliceProvider;->mAuthority:Ljava/lang/String;

    .line 287
    iput-object v2, p0, Landroidx/slice/SliceProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_0
    iput-object v2, p0, Landroidx/slice/SliceProvider;->mAuthority:Ljava/lang/String;

    .line 290
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceProvider;->mAuthorities:[Ljava/lang/String;

    .line 293
    :cond_1
    :goto_0
    return-void
.end method

.method public static setClock(Landroidx/slice/Clock;)V
    .locals 0
    .param p0, "clock"    # Landroidx/slice/Clock;

    .line 629
    sput-object p0, Landroidx/slice/SliceProvider;->sClock:Landroidx/slice/Clock;

    .line 630
    return-void
.end method

.method public static setSpecs(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 610
    .local p0, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    sput-object p0, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    .line 611
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 250
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 255
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 256
    iput-object p1, p0, Landroidx/slice/SliceProvider;->mContext:Landroid/content/Context;

    .line 257
    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/slice/SliceProvider;->setAuthorities(Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    if-nez p3, :cond_1

    return-object v1

    .line 274
    :cond_1
    invoke-direct {p0}, Landroidx/slice/SliceProvider;->getSliceProviderCompat()Landroidx/slice/compat/SliceProviderCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/slice/compat/SliceProviderCompat;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 272
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .line 601
    const/4 v0, 0x0

    return-object v0
.end method

.method public createPermissionSlice(Landroid/net/Uri;Ljava/lang/String;)Landroidx/slice/Slice;
    .locals 11
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p1, p2}, Landroidx/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 338
    .local v1, "action":Landroid/app/PendingIntent;
    if-nez v1, :cond_0

    .line 339
    invoke-static {v0, p1, p2}, Landroidx/slice/SliceProvider;->createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 342
    :cond_0
    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 343
    .local v2, "parent":Landroidx/slice/Slice$Builder;
    new-instance v3, Landroidx/slice/Slice$Builder;

    invoke-direct {v3, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    sget v4, Landroidx/slice/core/R$drawable;->abc_ic_permission:I

    .line 344
    invoke-static {v0, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v3

    const-string v4, "title"

    const-string v6, "shortcut"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    move-result-object v3

    new-instance v4, Landroidx/slice/Slice$Builder;

    invoke-direct {v4, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 347
    invoke-virtual {v4}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v7}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v3

    .line 349
    .local v3, "childAction":Landroidx/slice/Slice$Builder;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 350
    .local v4, "tv":Landroid/util/TypedValue;
    new-instance v6, Landroid/view/ContextThemeWrapper;

    const v8, 0x103012b

    invoke-direct {v6, v0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 351
    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v8, 0x1010435

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v4, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 352
    iget v6, v4, Landroid/util/TypedValue;->data:I

    .line 354
    .local v6, "deviceDefaultAccent":I
    new-instance v8, Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "permission"

    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    sget v9, Landroidx/slice/core/R$drawable;->abc_ic_arrow_forward:I

    .line 355
    invoke-static {v0, v9}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    invoke-virtual {v8, v9, v7, v10}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v8

    .line 357
    invoke-static {v0, p2}, Landroidx/slice/SliceProvider;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    invoke-virtual {v8, v9, v7, v10}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/String;

    .line 358
    const-string v9, "color"

    invoke-virtual {v8, v6, v9, v5}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v5

    .line 359
    invoke-virtual {v3}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v5

    .line 360
    invoke-virtual {v5}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v5

    .line 354
    invoke-virtual {v2, v5, v7}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 361
    const-string v5, "permission_request"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v5

    return-object v5
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedSlices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUrisLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUris:Ljava/util/List;

    if-nez v1, :cond_0

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/SliceManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceManager;

    move-result-object v2

    .line 515
    invoke-virtual {v2}, Landroidx/slice/SliceManager;->getPinnedSlices()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUris:Ljava/util/List;

    .line 517
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUris:Ljava/util/List;

    return-object v0

    .line 517
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    const-string v0, "vnd.android.slice"

    return-object v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 2

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 202
    new-instance v0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;

    iget-object v1, p0, Landroidx/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;-><init>(Landroidx/slice/SliceProvider;[Ljava/lang/String;)V

    return-object v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleSlicePinned(Landroid/net/Uri;)V
    .locals 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 455
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getPinnedSlices()Ljava/util/List;

    move-result-object v0

    .line 456
    .local v0, "pinnedSlices":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    return-void
.end method

.method public handleSliceUnpinned(Landroid/net/Uri;)V
    .locals 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 467
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getPinnedSlices()Ljava/util/List;

    move-result-object v0

    .line 468
    .local v0, "pinnedSlices":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 471
    :cond_0
    return-void
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 577
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
.end method

.method public final onCreate()Z
    .locals 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->onCreateSliceProvider()Z

    move-result v0

    return v0
.end method

.method protected onCreatePermissionManager([Ljava/lang/String;)Landroidx/slice/compat/CompatPermissionManager;
    .locals 4
    .param p1, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 236
    new-instance v0, Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slice_perms_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/slice/compat/CompatPermissionManager;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 236
    return-object v0
.end method

.method public onCreatePermissionRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateSliceProvider()Z
.end method

.method public onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 484
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This provider has not implemented intent to uri mapping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 436
    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 447
    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 554
    const/4 v0, 0x0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public validateIncomingAuthority(Ljava/lang/String;)V
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 526
    invoke-static {p1}, Landroidx/slice/SliceProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The authority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the one of the contentProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Landroidx/slice/SliceProvider;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/SliceProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 532
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/SliceProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method
