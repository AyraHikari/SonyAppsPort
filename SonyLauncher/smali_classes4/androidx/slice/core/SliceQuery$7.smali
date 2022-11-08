.class Landroidx/slice/core/SliceQuery$7;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
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
.field final synthetic val$format:Ljava/lang/String;

.field final synthetic val$hints:[Ljava/lang/String;

.field final synthetic val$nonHints:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$7;->val$format:Ljava/lang/String;

    iput-object p2, p0, Landroidx/slice/core/SliceQuery$7;->val$hints:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/slice/core/SliceQuery$7;->val$nonHints:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Landroidx/slice/SliceItem;)Z
    .locals 1
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 224
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$7;->val$format:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$7;->val$hints:[Ljava/lang/String;

    .line 225
    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$7;->val$nonHints:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 0

    .line 221
    check-cast p1, Landroidx/slice/SliceItem;

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceQuery$7;->filter(Landroidx/slice/SliceItem;)Z

    move-result p1

    return p1
.end method
