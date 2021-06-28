.class final enum Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;
.super Ljava/lang/Enum;
.source "LandingPageItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/LandingPageItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Touching"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

.field public static final enum CONTEXT:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

.field public static final enum ITEM:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

.field public static final enum NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    new-instance v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    const-string v1, "ITEM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->ITEM:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    new-instance v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    const-string v1, "CONTEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    sget-object v1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->ITEM:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->$VALUES:[Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;
    .locals 1

    .line 48
    const-class v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;
    .locals 1

    .line 48
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->$VALUES:[Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    return-object v0
.end method
