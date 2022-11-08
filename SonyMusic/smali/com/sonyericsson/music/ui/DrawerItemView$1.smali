.class synthetic Lcom/sonyericsson/music/ui/DrawerItemView$1;
.super Ljava/lang/Object;
.source "DrawerItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/DrawerItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$ui$DrawerItemView$Touching:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->values()[Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/ui/DrawerItemView$1;->$SwitchMap$com$sonyericsson$music$ui$DrawerItemView$Touching:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/ui/DrawerItemView$1;->$SwitchMap$com$sonyericsson$music$ui$DrawerItemView$Touching:[I

    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/music/ui/DrawerItemView$1;->$SwitchMap$com$sonyericsson$music$ui$DrawerItemView$Touching:[I

    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->ITEM:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
