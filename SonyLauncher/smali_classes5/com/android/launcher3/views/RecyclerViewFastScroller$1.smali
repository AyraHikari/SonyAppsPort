.class Lcom/android/launcher3/views/RecyclerViewFastScroller$1;
.super Landroid/util/Property;
.source "RecyclerViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/RecyclerViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/views/RecyclerViewFastScroller;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 72
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/views/RecyclerViewFastScroller;)Ljava/lang/Integer;
    .locals 1
    .param p1, "scrollBar"    # Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 76
    invoke-static {p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->-$$Nest$fgetmWidth(Lcom/android/launcher3/views/RecyclerViewFastScroller;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;->get(Lcom/android/launcher3/views/RecyclerViewFastScroller;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/launcher3/views/RecyclerViewFastScroller;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "scrollBar"    # Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->-$$Nest$msetTrackWidth(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V

    .line 82
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;->set(Lcom/android/launcher3/views/RecyclerViewFastScroller;Ljava/lang/Integer;)V

    return-void
.end method
