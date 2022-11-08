.class public interface abstract Lcom/android/launcher3/allapps/FloatingHeaderRow;
.super Ljava/lang/Object;
.source "FloatingHeaderRow.java"


# static fields
.field public static final NO_ROWS:[Lcom/android/launcher3/allapps/FloatingHeaderRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/allapps/FloatingHeaderRow;

    sput-object v0, Lcom/android/launcher3/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    return-void
.end method


# virtual methods
.method public abstract getExpectedHeight()I
.end method

.method public abstract getFocusedChild()Landroid/view/View;
.end method

.method public abstract getTypeClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/allapps/FloatingHeaderRow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasVisibleContent()Z
.end method

.method public isVisible()Z
    .locals 1

    .line 61
    invoke-interface {p0}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->shouldDraw()Z

    move-result v0

    return v0
.end method

.method public abstract setVerticalScroll(IZ)V
.end method

.method public abstract setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
.end method

.method public abstract shouldDraw()Z
.end method
