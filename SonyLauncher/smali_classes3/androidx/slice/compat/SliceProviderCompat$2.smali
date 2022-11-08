.class Landroidx/slice/compat/SliceProviderCompat$2;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"

# interfaces
.implements Landroidx/slice/SliceItemHolder$HolderHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/compat/SliceProviderCompat;->parseSlice(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 442
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V
    .locals 3
    .param p1, "holder"    # Landroidx/slice/SliceItemHolder;
    .param p2, "format"    # Ljava/lang/String;

    .line 445
    iget-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    instance-of v0, v0, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 447
    .local v0, "icon":Landroidx/core/graphics/drawable/IconCompat;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 449
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v1

    if-nez v1, :cond_0

    .line 450
    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 453
    .end local v0    # "icon":Landroidx/core/graphics/drawable/IconCompat;
    :cond_0
    return-void
.end method
