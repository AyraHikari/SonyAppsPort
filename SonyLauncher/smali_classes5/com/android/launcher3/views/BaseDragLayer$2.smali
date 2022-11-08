.class Lcom/android/launcher3/views/BaseDragLayer$2;
.super Landroid/util/Property;
.source "BaseDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/BaseDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 73
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Ljava/lang/Integer;
    .locals 1
    .param p1, "lp"    # Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 76
    iget v0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer$2;->get(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "lp"    # Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .param p2, "y"    # Ljava/lang/Integer;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 82
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer$2;->set(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;Ljava/lang/Integer;)V

    return-void
.end method
