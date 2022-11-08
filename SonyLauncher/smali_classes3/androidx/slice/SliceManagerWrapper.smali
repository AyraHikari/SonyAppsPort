.class Landroidx/slice/SliceManagerWrapper;
.super Landroidx/slice/SliceManager;
.source "SliceManagerWrapper.java"


# instance fields
.field private final mManager:Landroid/app/slice/SliceManager;


# direct methods
.method constructor <init>(Landroid/app/slice/SliceManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/app/slice/SliceManager;

    .line 47
    invoke-direct {p0}, Landroidx/slice/SliceManager;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0, v0}, Landroidx/slice/SliceManagerWrapper;-><init>(Landroid/app/slice/SliceManager;)V

    .line 45
    return-void
.end method

.method private getCurrentUserId()I
    .locals 5

    .line 91
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 93
    .local v0, "h":Landroid/os/UserHandle;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getIdentifier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    return v1

    .line 96
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    return v1

    .line 94
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/IllegalAccessException;
    return v1
.end method

.method private maybeAddCurrentUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 81
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "auth":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-direct {p0}, Landroidx/slice/SliceManagerWrapper;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 85
    return-object v1

    .line 82
    .end local v0    # "auth":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public checkSlicePermission(Landroid/net/Uri;II)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 62
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/slice/SliceManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method public getPinnedSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0}, Landroid/app/slice/SliceManager;->getPinnedSlices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 54
    invoke-direct {p0, p1}, Landroidx/slice/SliceManagerWrapper;->maybeAddCurrentUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 56
    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceConvert;->wrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 67
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    return-void
.end method

.method public revokeSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 72
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/slice/SliceManager;->revokeSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    return-void
.end method
