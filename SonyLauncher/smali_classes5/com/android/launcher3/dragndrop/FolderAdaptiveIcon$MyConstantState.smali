.class Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FolderAdaptiveIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyConstantState"
.end annotation


# instance fields
.field private final mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mBg:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mFg:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mMask:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/Path;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable$ConstantState;
    .param p2, "fg"    # Landroid/graphics/drawable/Drawable$ConstantState;
    .param p3, "badge"    # Landroid/graphics/drawable/Drawable$ConstantState;
    .param p4, "mask"    # Landroid/graphics/Path;

    .line 188
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBg:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 190
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mFg:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 191
    iput-object p3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 192
    iput-object p4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mMask:Landroid/graphics/Path;

    .line 193
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mFg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 204
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    and-int/2addr v0, v1

    .line 203
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 197
    new-instance v6, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mFg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 198
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mMask:Landroid/graphics/Path;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon-IA;)V

    .line 197
    return-object v6
.end method
