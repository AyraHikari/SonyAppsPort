.class public final enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.super Ljava/lang/Enum;
.source "ReflectionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/j2objc/annotations/ReflectionSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/ReflectionSupport$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

.field public static final enum FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ReflectionSupport$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->$VALUES:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/ReflectionSupport$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    return-object v0
.end method

.method public static values()[Lcom/google/j2objc/annotations/ReflectionSupport$Level;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->$VALUES:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    return-object v0
.end method
