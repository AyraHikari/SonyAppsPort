.class public Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;
.super Landroid/app/slice/SliceProvider;
.source "SliceProviderWrapperContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/compat/SliceProviderWrapperContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceProviderWrapper"
.end annotation


# static fields
.field private static final EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field private static final EXTRA_URI:Ljava/lang/String; = "slice_uri"

.field private static final METHOD_BIND:Ljava/lang/String; = "bind_slice"

.field private static final METHOD_MAP:Ljava/lang/String; = "map_slice"

.field private static final TAG:Ljava/lang/String; = "SliceProviderWrapper"


# instance fields
.field private mAutoGrantPermissions:[Ljava/lang/String;

.field private mSliceManager:Landroid/app/slice/SliceManager;

.field private mSliceProvider:Landroidx/slice/SliceProvider;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceProvider;[Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Landroidx/slice/SliceProvider;
    .param p2, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 66
    invoke-direct {p0, p2}, Landroid/app/slice/SliceProvider;-><init>([Ljava/lang/String;)V

    .line 67
    nop

    .line 68
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 69
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 70
    return-void
.end method

.method private checkPermissions(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 126
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 128
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 130
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, v3, p1}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 132
    return-void

    .line 127
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 74
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/SliceProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/slice/SliceProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 76
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 77
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 99
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "bind_slice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    if-eqz p3, :cond_0

    const-string v1, "slice_uri"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 103
    :cond_1
    const-string v1, "map_slice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string v1, "slice_intent"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p0, v1}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 110
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceManager:Landroid/app/slice/SliceManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 110
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/slice/SliceManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->checkPermissions(Landroid/net/Uri;)V

    .line 119
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v0, "androidx.remotecallback.method.PROVIDER_CALLBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/slice/SliceProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 122
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/slice/SliceProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .locals 5
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 140
    .local p2, "supportedVersions":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    invoke-static {p2}, Landroidx/slice/SliceConvert;->wrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 142
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v1, p1}, Landroidx/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v1

    invoke-static {v1}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-static {v0}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 142
    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SliceProviderWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slice with URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    nop

    .line 147
    invoke-static {v0}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 145
    return-object v0

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 148
    throw v1
.end method

.method public onCreate()Z
    .locals 1

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 86
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->checkPermissions(Landroid/net/Uri;)V

    .line 89
    :cond_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 90
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, p1, v1}, Landroidx/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 91
    .local v0, "action":Landroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 92
    return-object v0

    .line 94
    :cond_1
    invoke-super {p0, p1}, Landroid/app/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
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

    .line 165
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 1
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 153
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V

    .line 154
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSlicePinned(Landroid/net/Uri;)V

    .line 155
    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 1
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 159
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V

    .line 160
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSliceUnpinned(Landroid/net/Uri;)V

    .line 161
    return-void
.end method
