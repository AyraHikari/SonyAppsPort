.class Landroidx/slice/core/SliceQuery$8;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/core/SliceQuery;->findItem(Landroidx/slice/Slice;Landroid/net/Uri;)Landroidx/slice/SliceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/slice/core/SliceQuery$Filter<",
        "Landroidx/slice/SliceItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 303
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$8;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Landroidx/slice/SliceItem;)Z
    .locals 2
    .param p1, "input"    # Landroidx/slice/SliceItem;

    .line 306
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$8;->val$uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 0

    .line 303
    check-cast p1, Landroidx/slice/SliceItem;

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceQuery$8;->filter(Landroidx/slice/SliceItem;)Z

    move-result p1

    return p1
.end method
