.class final enum Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;
.super Ljava/lang/Enum;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

.field public static final enum STATE_ALPHA:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

.field public static final enum STATE_GONE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

.field public static final enum STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

.field public static final enum STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 360
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    const-string v1, "STATE_ALPHA"

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    const-string v1, "STATE_VISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    const-string v1, "STATE_INVISIBLE"

    invoke-direct {v0, v1, v4}, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    const-string v1, "STATE_GONE"

    invoke-direct {v0, v1, v5}, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    .line 359
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->$VALUES:[Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;
    .locals 1
    .parameter "name"

    .prologue
    .line 359
    const-class v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->$VALUES:[Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    return-object v0
.end method
