.class Landroidx/slice/core/SliceQuery$1;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/core/SliceQuery;->contains(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
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
.field final synthetic val$item:Landroidx/slice/SliceItem;


# direct methods
.method constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 0

    .line 97
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$1;->val$item:Landroidx/slice/SliceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Landroidx/slice/SliceItem;)Z
    .locals 1
    .param p1, "s"    # Landroidx/slice/SliceItem;

    .line 100
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$1;->val$item:Landroidx/slice/SliceItem;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 0

    .line 97
    check-cast p1, Landroidx/slice/SliceItem;

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceQuery$1;->filter(Landroidx/slice/SliceItem;)Z

    move-result p1

    return p1
.end method
