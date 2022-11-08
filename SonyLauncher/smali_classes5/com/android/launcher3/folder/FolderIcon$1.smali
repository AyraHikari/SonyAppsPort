.class Lcom/android/launcher3/folder/FolderIcon$1;
.super Landroid/util/Property;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/folder/FolderIcon;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 154
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/folder/FolderIcon;)Ljava/lang/Float;
    .locals 1
    .param p1, "folderIcon"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 157
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-$$Nest$fgetmDotScale(Lcom/android/launcher3/folder/FolderIcon;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon$1;->get(Lcom/android/launcher3/folder/FolderIcon;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/launcher3/folder/FolderIcon;Ljava/lang/Float;)V
    .locals 1
    .param p1, "folderIcon"    # Lcom/android/launcher3/folder/FolderIcon;
    .param p2, "value"    # Ljava/lang/Float;

    .line 162
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->-$$Nest$fputmDotScale(Lcom/android/launcher3/folder/FolderIcon;F)V

    .line 163
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 164
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon$1;->set(Lcom/android/launcher3/folder/FolderIcon;Ljava/lang/Float;)V

    return-void
.end method
