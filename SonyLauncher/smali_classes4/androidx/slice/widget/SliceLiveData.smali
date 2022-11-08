.class public final Landroidx/slice/widget/SliceLiveData;
.super Ljava/lang/Object;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceLiveData$OnErrorListener;,
        Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;,
        Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;
    }
.end annotation


# static fields
.field public static final OLD_BASIC:Landroidx/slice/SliceSpec;

.field public static final OLD_LIST:Landroidx/slice/SliceSpec;

.field public static final SUPPORTED_SPECS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SliceLiveData"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 67
    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->OLD_BASIC:Landroidx/slice/SliceSpec;

    .line 73
    new-instance v1, Landroidx/slice/SliceSpec;

    const-string v3, "androidx.app.slice.LIST"

    invoke-direct {v1, v3, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/slice/widget/SliceLiveData;->OLD_LIST:Landroidx/slice/SliceSpec;

    .line 79
    new-instance v3, Landroidx/collection/ArraySet;

    const/4 v4, 0x5

    new-array v4, v4, [Landroidx/slice/SliceSpec;

    sget-object v5, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    aput-object v5, v4, v2

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const/4 v0, 0x4

    aput-object v1, v4, v0

    .line 80
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    return-void
.end method

.method public static fromCachedSlice(Landroid/content/Context;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 137
    invoke-static {p0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroidx/slice/widget/SliceLiveData;->fromStream(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Context;Landroid/content/Intent;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroidx/slice/widget/SliceLiveData$OnErrorListener;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-object v0
.end method

.method public static fromStream(Landroid/content/Context;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Landroidx/slice/widget/SliceLiveData$OnErrorListener;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroidx/slice/widget/SliceLiveData;->fromStream(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static fromStream(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroidx/slice/SliceViewManager;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 148
    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;-><init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-object v0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-object v0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Landroidx/slice/widget/SliceLiveData$OnErrorListener;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-object v0
.end method
