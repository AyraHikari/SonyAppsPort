.class public abstract Landroidx/slice/SliceViewManager;
.super Ljava/lang/Object;
.source "SliceViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceViewManager$SliceCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Landroidx/slice/SliceViewManagerWrapper;

    invoke-direct {v0, p0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Landroidx/slice/SliceViewManagerCompat;

    invoke-direct {v0, p0}, Landroidx/slice/SliceViewManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
.end method

.method public abstract bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
.end method

.method public abstract getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
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
.end method

.method public abstract mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
.end method

.method public abstract pinSlice(Landroid/net/Uri;)V
.end method

.method public abstract registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
.end method

.method public abstract registerSliceCallback(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroidx/slice/SliceViewManager$SliceCallback;)V
.end method

.method public abstract unpinSlice(Landroid/net/Uri;)V
.end method

.method public abstract unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
.end method
